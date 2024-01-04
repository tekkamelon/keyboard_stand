// 変数の宣言
$fn=25;
bar_length=80;

// 関数の宣言
module plank(){

	// 下部
	cube([60, 10, 10]);

	// 上部の構造物
	hull(){

		translate([0, 0, 10]){

			cube([40, 10, 0.01]);
		}

		translate([0, 0, 70]){

			cube([10, 10, 0.01]);
		}

	}

	translate([50, 0, 10]){

		cube([10, 10, 10]);
		
	}

}

// 一体化
module all(){

	// 左側
	plank();

	// 右側
	translate([0, bar_length, 0]){

		plank();

	}

	// 接続部分
	cube([10, bar_length+10, 10]);

}

// 面取り
minkowski(){

	sphere(r=1);

	all();

}

