#include <iostream>
#include <bits/stdc++.h>

using namespace std;

struct Data
{
    int x;
    long double y;
};

long double pow(long double a, int b)
{
    long double retorno=1;
    for(int i=0; i<b; i++)
    {
        retorno=retorno*a;
    }
    return retorno;
}

long double interpolate(Data f[], int xi, int n)
{
    long double result = 0; // Initialize result

    for (int i=0; i<n; i++)
    {
        // Compute individual terms of above formula
        long double term = f[i].y;
        for (int j=0;j<n;j++)
        {
            if (j!=i)
                term = term*(xi - f[j].x)/(f[i].x - f[j].x);
        }

        // Add current term to result
        result += term;
    }

    return result;
}

long double interpolation(int ano, int _size, int *anos, long double *amostra)
{
    long double *f = new long double[_size];
    f[0]=amostra[0];
    long double s, p;
    for(int i=1; i<_size; i++)
    {
        s=0;
        p=1;
        for(int j=0; j<i; j++ )
        {
            s=s+f[j]*p;
            p=(anos[i]-anos[j])*p;
        }
        f[i]=(amostra[i]-s)/p;
        cout<<f[i] << endl;
    }

    long double retorno=f[_size-1];

    for(int k=_size-2; k>=0; k--)
    {
        retorno=((ano-anos[k])*retorno)+f[k];
    }
    return retorno;
}

long double distAmostra (int ano, int _size, Data *amostra)
{
    int aSize=_size-1;
    int r=0;

    for(int i=0; i<_size; i++)
    {
        if(ano==amostra[i].x)
        {
            r=i;
        }
    }


    Data *aux = new Data[aSize];
    for(int k=0; k<r; k++)
    {
        aux[k].x=amostra[k].x;
        aux[k].y=amostra[k].y;
    }
    for(int n=r+1; n<_size; n++)
    {
        aux[n-1].x=amostra[n].x;
        aux[n-1].y=amostra[n].y;
    }

    long double x, y, z;

    x=amostra[r].y;

    y=interpolate(aux, r, aSize);

    cout << x << " <- Amostra | Interpola -> " << y << endl;

    z=x-y;

    return abs(z);

}

int main()
{
    int sizeOfArray =15;

    Data *valores = new Data[sizeOfArray];


/* definindo valores particulares */

    valores[0].x=2000;
    valores[0].y=137;
    valores[1].x=2001;
    valores[1].y=140;
    valores[2].x=2002;
    valores[2].y=148;
    valores[3].x=2003;
    valores[3].y=155;
    valores[4].x=2004;
    valores[4].y=162;
    valores[5].x=2005;
    valores[5].y=182;
    valores[6].x=2006;
    valores[6].y=214;
    valores[7].x=2007;
    valores[7].y=227;
    valores[8].x=2008;
    valores[8].y=247;
    valores[9].x=2009;
    valores[9].y=254;
    valores[10].x=2010;
    valores[10].y=273;
    valores[11].x=2011;
    valores[11].y=279;
    valores[12].x=2012;
    valores[12].y=285;
    valores[13].x=2013;
    valores[13].y=291;
    valores[14].x=2014;
    valores[14].y=304;

/* Definindo diferenças */

    Data *comDif = new Data[sizeOfArray-1];

    for(int i=0; i<sizeOfArray-1; i++)
    {
        comDif[i].x=valores[i+1].x;
        comDif[i].y=valores[i+1].y-valores[i].y;
    }

/* Cálculo Esperança */

    long double E=0;
    for(int i=0; i<sizeOfArray-1; i++)
    {
        E=E+comDif[i].y;
        cout << comDif[i].x << " " << comDif[i].y << endl;
    }
    E=E/(sizeOfArray-1);

/* Fim Cálculo */

    cout << E << endl;

    long double _V=0,V=0;

    for(int i=0; i<sizeOfArray-1; i++)
    {
        _V=_V+(comDif[i].y)*(comDif[i].y);

/*        cout << comDif[i].x << " " << (comDif[i].y)*(comDif[i].y) << endl; */
    }


/* Calculo Desvio Padrão */
    _V=_V/(sizeOfArray-1);

    V=_V-(E*E);
    long double u;
    u=sqrt(V);

/* Fim Cálculo */

    cout << _V << " " << V << " " << u << endl;

    Data *probabilidade = new Data[sizeOfArray-1];

    for(int i=0; i<sizeOfArray-1; i++)
    {
        probabilidade[i].x=comDif[i].x;
    }

    long double interval_0=E-u;
    long double interval_1=E+u;

    for(int i=0; i<sizeOfArray-1; i++)
    {
        if((comDif[i].y>interval_0)&&(comDif[i].y<interval_1))
        {
            probabilidade[i].y=0.68;
        }
        if(((comDif[i].y>interval_0-u)&&(comDif[i].y<interval_0))||((comDif[i].y>interval_1)&&(comDif[i].y<interval_1+u)))
        {
            probabilidade[i].y=0.136;
        }
        if(((comDif[i].y>interval_0-2u)&&(comDif[i].y<interval_0-u))||((comDif[i].y>interval_1+u)&&(comDif[i].y<interval_1+2u)))
        {
            probabilidade[i].y=0.021;
        }
        if((comDif[i].y<interval_0-2u)||(comDif[i].y>interval_1+2u))
        {
            probabilidade[i].y=0.003;
        }
        cout << probabilidade[i].x << "," << probabilidade[i].y << endl;
    }


    return 0;
}
