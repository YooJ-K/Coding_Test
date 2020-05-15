#include <iostream>
using namespace std;

int main() {
	int n, count[91][2], iter;
	long long int arr[91];

	cin >> iter;

	while (iter--) {
		cin >> n;

		arr[0] = 0;
		arr[1] = 1;

		count[0][0] = 1;
		count[0][1] = 0;
		count[1][0] = 0;
		count[1][1] = 1;

		for (int i = 2; i <= n; i++) {
			arr[i] = arr[i - 1] + arr[i - 2];
			for (int j = 0; j < 2; j++) {
				count[i][j] = count[i - 1][j] + count[i - 2][j];
			}
		}

		cout << count[n][0] << " " << count[n][1] << endl;
	}
}
