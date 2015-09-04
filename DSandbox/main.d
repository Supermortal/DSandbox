import std.stdio;
import std.math;

int magicNumber = 42;
string password = "seasme";

int main(string[] argv)
{
	int testInt;

    if (testInt == 0) {
			writefln("testInt is 0");
	}
	else {
			writefln("testInt is not 0");
	}

	initValues();
	stringStuff();

	double testD = sqrt(4f);
	writefln("%s", testD);

	readf("");
    return 0;
}

void initValues() {
	writeln(int.init);
	writeln(float.init);
}

void stringStuff() {
	string str1 = "Some";
	string str2 = "Stuff";
	string str3 = str1 ~= " ";

	writefln("%s", str3 ~= str2);
}
