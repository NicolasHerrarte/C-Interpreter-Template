proc arr_madness() -> int[][] {
    init int[] dim_one <- assign int[5];

    dim_one[0] = 11;
    dim_one[1] = 22;
    dim_one[2] = 33;
    dim_one[3] = 44;
    dim_one[4] = 55;

    init int[][][] dim_two <- assign int[1][2][5];

    for(init int i <- 0;i < 5;i = i + 1){
        dim_two[0][1][i] = i - ((i+1) * 2);
    }

    dim_two[0][0] = dim_one;

    return dim_two[0];
}

init int[][] madness_return <- arr_madness();

for(init int i <- 0;i < 5;i = i + 1){
    print(madness_return[0][i]);
}

for(init int i <- 0;i < 5;i = i + 1){
    print(madness_return[1][i]);
}

init int a <- madness_return[0][0];
print(a);

