var score: Number = 876;
var newScore: Number = 1077;
var scoreDif: Number = 1077 - 876;
var str: String;
var c1: String;
var c2: String;
var c3: String;
var c4: String;
var c5: String;
var cc1: MovieClip;
var cc2: MovieClip;
var cc3: MovieClip;
var cc4: MovieClip;
var cc5: MovieClip;
var lngth: Number;
var strPos: Array = [];
var moviePos: Array = [];
var temp: String;
var mySound: Sound = new Sound();
var myChannel: SoundChannel = new SoundChannel();
mySound.load(new URLRequest("burp.mp3"));
var theNum: Number;

var changeNumberTimer: Timer = new Timer(25, scoreDif);
changeNumberTimer.addEventListener(TimerEvent.TIMER, goAgain);
changeNumberTimer.start();

function goAgain(eft: TimerEvent): void {
	theNum = score;
	if (theNum%2 == 0) {
		myChannel = mySound.play();
	}
	score = score + 1;
	breakDownScore();
}

function breakDownScore(): void {

	strPos.splice(0);
	str = score.toString();
	lngth = str.length;

	for (var n: Number = 0; n < lngth; n++) {
		temp = str.substring(n, n + 1);
		strPos.push(temp);
	}
	calcZeros();
}

function calcZeros(): void {

	if (lngth == 1) {
		c5 = strPos[0];
		cc5 = showGraphicsNumber(c5);
		cc4 = new numGraphic0();
		cc3 = new numGraphic0();
		cc2 = new numGraphic0();
		cc1 = new numGraphic0();
	}
	if (lngth == 2) {
		c5 = strPos[1];
		c4 = strPos[0];
		cc5 = showGraphicsNumber(c5);
		cc4 = showGraphicsNumber(c4);
		cc3 = new numGraphic0();
		cc2 = new numGraphic0();
		cc1 = new numGraphic0();
	}
	if (lngth == 3) {
		c5 = strPos[2];
		c4 = strPos[1];
		c3 = strPos[0];
		cc5 = showGraphicsNumber(c5);
		cc4 = showGraphicsNumber(c4);
		cc3 = showGraphicsNumber(c3);
		cc2 = new numGraphic0();
		cc1 = new numGraphic0();
	}
	if (lngth == 4) {
		c5 = strPos[3];
		c4 = strPos[2];
		c3 = strPos[1];
		c2 = strPos[0];
		cc5 = showGraphicsNumber(c5);
		cc4 = showGraphicsNumber(c4);
		cc3 = showGraphicsNumber(c3);
		cc2 = showGraphicsNumber(c2);
		cc1 = new numGraphic0();
	}
	cc1.width = 60;
	cc1.height = 75;
	cc2.width = 60;
	cc2.height = 75;
	cc3.width = 60;
	cc3.height = 75;
	cc4.width = 60;
	cc4.height = 75;
	cc5.width = 60;
	cc5.height = 75;
	indx = stage.stageWidth / 2 - 180;
	indy = 500;
	cc1.x = indx;
	cc1.y = indy;
	cc2.x = indx + 60;
	cc2.y = indy;
	cc3.x = indx + 120;
	cc3.y = indy;
	cc4.x = indx + 180;
	cc4.y = indy;
	cc5.x = indx + 240;
	cc5.y = indy;

	if (container.contains(cc1)) {
		cc1.parent.removeChild(cc1);
	}
	if (container.contains(cc2)) {
		cc2.parent.removeChild(cc2);
	}
	if (container.contains(cc3)) {
		cc3.parent.removeChild(cc3);
	}
	if (container.contains(cc4)) {
		cc4.parent.removeChild(cc4);
	}
	if (container.contains(cc5)) {
		cc5.parent.removeChild(cc5);
	}
	container.addChild(cc1);
	container.addChild(cc2);
	container.addChild(cc3);
	container.addChild(cc4);
	container.addChild(cc5);
}

function showGraphicsNumber(uu: String): MovieClip {

	if (uu == "0") {
		return new numGraphic0();
	}
	if (uu == "1") {
		return new numGraphic1();
	}
	if (uu == "2") {
		return new numGraphic2();
	}
	if (uu == "3") {
		return new numGraphic3();
	}
	if (uu == "4") {
		return new numGraphic4();
	}
	if (uu == "5") {
		return new numGraphic5();
	}
	if (uu == "6") {
		return new numGraphic6();
	}
	if (uu == "7") {
		return new numGraphic7();
	}
	if (uu == "8") {
		return new numGraphic8();
	}
	if (uu == "9") {
		return new numGraphic9();
	} 
	else {
		return new numGraphic9();
	}
}