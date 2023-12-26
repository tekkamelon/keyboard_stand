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

plank();

translate([0, 60, 0]){

	plank();

}

// 接続部分
cube([10, 70, 10]);

