import flash.display.Loader;
import flash.display.MovieClip;
import flash.utils.Timer;
import flash.display.Sprite;
import flash.events.TimerEvent;

var indx, addColx, indy, lngth: Number;
var score: Number = 1;
var newScore: Number = 11000;
var scoreDif: Number = newScore - score; scoreDif = scoreDif / 44; // count increment
var container: Sprite = new Sprite();
var closeContainerButton: closeButton = new closeButton();
var str, temp: String;
var c1,c2,c3,c4,c5: String;
var cc1, cc2, cc3, cc4, cc5: MovieClip;
var stringArrayofNumerals: Array = [];
var changeNumberTimer: Timer = new Timer(25, scoreDif);
closeContainerButton.addEventListener(MouseEvent.CLICK, removeContainer);
closeContainerButton.x = stage.stageWidth / 2 - closeContainerButton.width / 2;
closeContainerButton.y = stage.stageHeight / 2 - closeContainerButton.height / 2;
addChild(container);
addChild(closeContainerButton);
changeNumberTimer.addEventListener(TimerEvent.TIMER, count);
changeNumberTimer.start();

function removeContainer(tevt: MouseEvent): void {

	closeContainerButton.removeEventListener(MouseEvent.CLICK, removeContainer);

	if (closeContainerButton.stage) {
		closeContainerButton.parent.removeChild(closeContainerButton);
	}
	if (container.stage) {
		container.parent.removeChild(container);
	}
}

function count(eft: TimerEvent): void {

	score = score + 44;
	breakDownScore();
}

function breakDownScore(): void {

	stringArrayofNumerals.splice(0);
	str = score.toString();
	lngth = str.length;

	for (var n: Number = 0; n < lngth; n++) {
		temp = str.substring(n, n + 1);
		stringArrayofNumerals.push(temp);
	}
	convertTextNumeralsToGraphicNumerals();
}

function convertTextNumeralsToGraphicNumerals(): void {

	if (lngth == 1) {
		c5 = stringArrayofNumerals[0];
		cc5 = getGraphicForNumeral(c5);
		cc4 = new numGraphic0();
		cc3 = new numGraphic0();
		cc2 = new numGraphic0();
		cc1 = new numGraphic0();
	}
	if (lngth == 2) {
		c5 = stringArrayofNumerals[1];
		c4 = stringArrayofNumerals[0];
		cc5 = getGraphicForNumeral(c5);
		cc4 = getGraphicForNumeral(c4);
		cc3 = new numGraphic0();
		cc2 = new numGraphic0();
		cc1 = new numGraphic0();
	}
	if (lngth == 3) {
		c5 = stringArrayofNumerals[2];
		c4 = stringArrayofNumerals[1];
		c3 = stringArrayofNumerals[0];
		cc5 = getGraphicForNumeral(c5);
		cc4 = getGraphicForNumeral(c4);
		cc3 = getGraphicForNumeral(c3);
		cc2 = new numGraphic0();
		cc1 = new numGraphic0();
	}
	if (lngth == 4) {
		c5 = stringArrayofNumerals[3];
		c4 = stringArrayofNumerals[2];
		c3 = stringArrayofNumerals[1];
		c2 = stringArrayofNumerals[0];
		cc5 = getGraphicForNumeral(c5);
		cc4 = getGraphicForNumeral(c4);
		cc3 = getGraphicForNumeral(c3);
		cc2 = getGraphicForNumeral(c2);
		cc1 = new numGraphic0();
	}	
	if (lngth == 5) {
		c5 = stringArrayofNumerals[4];
		c4 = stringArrayofNumerals[3];
		c3 = stringArrayofNumerals[2];
		c2 = stringArrayofNumerals[1];
		c1 = stringArrayofNumerals[0];
		cc5 = getGraphicForNumeral(c5);
		cc4 = getGraphicForNumeral(c4);
		cc3 = getGraphicForNumeral(c3);
		cc2 = getGraphicForNumeral(c2);
		cc1 = getGraphicForNumeral(c1);
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

	indy = 100;
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

function getGraphicForNumeral(uu: String): MovieClip {

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
	else
	{
		return new numGraphic0();
	}
}
