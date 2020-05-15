#include <iostream>
using namespace std;

int main() {
	int n;
	long long int arr[91];

	cin >> n;

	for (int i = 0; i <= n; i++) {
		if (i == 0) arr[i] = 0;
		else if (i == 1) arr[i] = 1;
		else arr[i] = arr[i - 1] + arr[i - 2];
	}

	cout << arr[n] << endl;
}
