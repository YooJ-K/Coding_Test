#include <iostream>
using namespace std;

int main() {
	int n, k, count = 0, * a;

	cin >> n >> k;

	// 저장 공간을 할당해주는 이유? 
	// 오름 차순으로 입력이 들어오기 때문이다.
	a = new int[n];


	for (int i = n - 1; i >= 0; i--)
	{
		cin >> a[i];
	}

	for (int i = 0; i < n; i++)
	{
		if (k == k % a[i]) continue;
		count += (k / a[i]);
		k %= a[i];
	}

	cout << count << endl;
}