#include <iostream>

using namespace std;


long double abs(long double x)
{
    if(x>0)
    {
        return x;
    }
    else
    {
        return -x;
    }

}

long double pow(long double a, int b)
{
    long double retorno=1;
    for(int i=0; i<b; i++)
    {
        retorno=retorno*a;
    }
    return retorno;
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

long double distAmostra (int ano, int _size, int *anos, long double *amostra)
{
    int size=_size-1;
    int r=0;

    for(int i=0; i<_size; i++)
    {
        if(ano==anos[i])
        {
            r=i;
        }
    }


    long double *aux = new long double[size];
    int *auxAnos = new int[size];
    for(int k=0; k<r; k++)
    {
        aux[k]=amostra[k];
        auxAnos[k]=anos[k];
    }
    for(int n=r+1; n<_size; n++)
    {
        aux[n-1]=amostra[n];
        auxAnos[n-1]=anos[n];
    }

    long double x, y, z;

    x=amostra[r];

    y=interpolation(ano, size, auxAnos, aux);

    z=x-y;

    return abs(z);

}

int main()
{
    int sizeOfArray;
    std::cout << "Quantidade de amostras" << endl;
    std::cin >> sizeOfArray;
    long double *valores = new long double[sizeOfArray];
    int *anos = new int[sizeOfArray];

    for(int i=0; i<sizeOfArray; i++)
    {
        cout<< "Ano e valor "<< i+1 <<endl;
        cin>> anos[i];
        cin>> valores[i];
    }

    int x;

    cout<< "Ano pedido" << endl;
    cin>> x;

    long double exibir;
    exibir=interpolation(x, sizeOfArray, anos, valores);
    cout<< exibir << endl;

    return 0;
}
