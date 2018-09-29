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

long double Esperanca(vector<Data> v)
{
    long double E=0;
    long len=v.size();

    for(int i=0; i<len; i++)
    {
        E=E+v[i].y;
    }
    E=E/len;

    return E;
}

long double Variancia(vector<Data> v)
{
    long double V, u;
    long len=v.size();

    vector<Data> _v (len);
    for(int i=0; i<len; i++)
    {
        _v[i].x=v[i].x;
        _v[i].y=(v[i].y)*(v[i].y);
    }
    V=Esperanca(_v)-Esperanca(v)*Esperanca(v);

    return V;
}

vector<Data> correctnessProb(vector<Data> dados)
{
    long sizeOfArray= dados.size();

/* Definindo diferenças */

    vector<Data> comDif (sizeOfArray-1);
    for(int i=0; i< sizeOfArray-1; i++)
    {
        comDif[i].x=dados[i+1].x;
        comDif[i].y=dados[i+1].y-dados[i].y;
    }

/* Cálculo Esperança */

    long double E=Esperanca(comDif);

/* Exibir Esperança */

    cout << E << endl;

    long double V=Variancia(comDif);

/* Calculo Desvio Padrão */

    long double sigma=sqrt(V);

/* Exibir Desvio Padrão */

    cout << V << " " << sigma << endl;

/* Definir parâmetros */

    long double alpha=sigma/E;
    long double beta=alpha*alpha;
    long double r=(1+alpha)/(1+beta);

/* Classificação */

    vector<Data> probabilidade (sizeOfArray-1);

    for(int i=0; i<sizeOfArray-1; i++)
    {
        probabilidade[i].x=comDif[i].x;
    }

    long double interval_0=E-sigma;
    long double interval_1=E+sigma;

    for(int i=0; i<sizeOfArray-1; i++)
    {
        if((comDif[i].y>interval_0)&&(comDif[i].y<interval_1))
        {
            /* Valores determinados baseados na distribuição normal */

            probabilidade[i].y=0.52+r*0.48;
        }

        if(((comDif[i].y>interval_0-sigma)&&(comDif[i].y<interval_0))||((comDif[i].y>interval_1)&&(comDif[i].y<interval_1+sigma)))
        {
            /* Valores determinados baseados na distribuição normal */
            probabilidade[i].y=0.136*(1-r);
        }

        if(((comDif[i].y>interval_0-2*sigma)&&(comDif[i].y<interval_0-sigma))||((comDif[i].y>interval_1+sigma)&&(comDif[i].y<interval_1+2*sigma)))
        {
            /* Valores determinados baseados na distribuição normal */
            probabilidade[i].y=0.021*(1-r);
        }

        if((comDif[i].y<interval_0-2*sigma)||(comDif[i].y>interval_1+2*sigma))
        {
            /* Valores determinados baseados na distribuição normal */
            probabilidade[i].y=0.003*(1-r);
        }

        cout << probabilidade[i].x << "," << probabilidade[i].y << endl;
    }

/* Definir o retorno da função em função de comDif */

    vector<Data> cD_Return;

    for(int i=0; i< sizeOfArray-1; i++)
    {
        cD_Return.push_back(probabilidade[i]);
    }

    return cD_Return;
}

int main()
{
    vector<Data> valores (15);

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

/* Fim definição */

    correctnessProb(valores);

    return 0;
}
