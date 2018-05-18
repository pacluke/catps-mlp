#include <iostream>

class Doce
{
	public:
		void recheio()
		{
			std::cout << "Doce sem recheio :(\n";
		}	
};

class Sonho: public Doce
{
	public:
		void recheio()
		{
			std::cout << "Mumu\n";
		}
};

class Churro: public Doce
{
	public:
		void recheio()
		{
			std::cout << "Chocolate\n";
		}
};

class Croissant: public Doce
{
	public:
		void recheio()
		{
			std::cout << "Goiabada\n";
		}
};


class CuecaVirada: public Doce
{
	
};

int main(int argc, char const *argv[])
{
	// Doce é a super-classe herdada por Sonho, Churro, Croissant e CuecaVirada.
	// Sonho, Churro e Croissant sobrecarregam o método recheio() da super-classe doce, CuecaVirada não.

	Sonho sonho;
	sonho.recheio();

	Churro churro;
	churro.recheio();

	Croissant croissant;
	croissant.recheio();

	CuecaVirada cueca;
	cueca.recheio();

	return 0;
}