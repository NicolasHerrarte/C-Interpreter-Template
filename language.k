proc matmul(a : int[][], b : int[][]) -> int[][] {
    init int[][] result <- assign int[3][3];

    for(init int i <- 0; i < 3; i = i + 1){
        for(init int j <- 0; j < 3; j = j + 1){
            init int sum <- 0;
            for(init int k <- 0; k < 3; k = k + 1){
                sum = sum + a[i][k] * b[k][j];
            }
            result[i][j] = sum;
        }
    }

    return result;
}

init int[][] a <- assign int[3][3];
init int[][] b <- assign int[3][3];

for(init int i <- 0; i < 3; i = i + 1){
    for(init int j <- 0; j < 3; j = j + 1){
        a[i][j] = i + j;
        b[i][j] = i * j;
    }
}

init int[][] c <- matmul(a, b);

for(init int i <- 0; i < 3; i = i + 1){
    for(init int j <- 0; j < 3; j = j + 1){
        print(tostr(c[i][j]));
    }
}


