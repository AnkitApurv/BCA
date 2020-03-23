//source : http://www.dreamincode.net/forums/topic/166671-runge-kutta-order-4-in-c/
#include<stdafx.h>
#include<math.h>
#include<stdio.h>

double f(double x, double y)
{
	return(x - y);
}

void main()
{
	int i, n;
	double K1, K2, K3, K4, h, x, x1, y;
	printf("vvedite zna4enie y0=");
	scanf("%lf", &y);
	printf("vvedite zna4enie x0=");
	scanf("%lf", &x);
	printf("vvedite zna4enie xn=");
	scanf("%lf", &x1);
	printf("vvedite veli4iny shaga h=");
	scanf("%lf", &h);

	n = (x1 - x) / h;

	for (i = 0; i<n; i++)
	{
		K1 = f(x, y);
		printf("\n %lf", &K1);

		K2 = f(x + h / 2, y + h / 2 * K1);
		printf("\n %lf", &K2);

		K3 = f(x + h / 2, y + h / 2 * K2);
		printf("\n %lf", &K3);

		K4 = f(x + h, y + h*K3);
		printf("\n %lf", &K4);

		y = y + h / 6 * (K1 + 2 * K2 + 2 * K3 + K4);
		printf("\n %lf", &y);
	}
	scanf("%lf", &y);
}