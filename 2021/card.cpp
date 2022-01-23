#include <iostream>
#include <queue>
#include <algorithm>
#include <fstream>

using namespace std;

int main()
{
	priority_queue<int> cards;
	int n, element, before, now, j = 0, num[2];
	
	// input
	
	ifstream in("cards/card.inp"); // input file name

	in >> n;
	
	for(int i=0; i<n-2; i++){
		in >> element;
		cards.push(element);
	}
	
	in.close();
	
	
	// °è »ê 
	
	for(int i=0; i<n-2; i++){
		now = cards.top();

		if(i!=0)
		{
			if(before-now == 2)
				num[j++] = now+1;
			else if(before-now ==3)
			{
				num[0] = before-1;
				num[1] = before-2;
				j = 2;
			}
			if (j==2) break; 
		}
		before = now;
		cards.pop();
	}
	
	cout << "num : " << num[1] << " " << num[0] << endl;
	
	// output
	
	ofstream out("cards.out");
	out << num[1] << endl << num[0] << endl;
	out.close();
}
