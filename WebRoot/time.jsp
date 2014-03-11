<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>日历</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<STYLE type="text/css">
body{overflow-x:hidden;overflow-y:auto;}
#myrl{width:532px;height:352px;margin:0px auto;background:#fff;position:relative;border:2px dashed #ccc}
#box{width:520px;height:322px;position:absolute;top:10px;right:0px;}
#boxmsg{display:block;font-size:12px;color:#09F;text-decoration:none;text-align:center;padding-top:12px;background:#ededed;width:48px;height:37px;position:absolute;top:13px;right:15px;z-index:9999;}
#boxriqi{position:relative;top:380px;width:100%}
/*#boxcopy{font-size:12px;color:#D2FFE1;height:16px;position:absolute;bottom:6px;right:15px;z-index:2;}*/
.btm button{display:block;height:22px;width:36px;line-height:18px;white-space:nowrap;text-align:center;}
.todyaColor{ background-color:#0FF;}
/*主题颜色
#0FF=今日颜色;
#0099FF=日历主题颜色;*/
</STYLE>
<SCRIPT language="JavaScript">
<!--
var lunarInfo=new Array(
0x4bd8,0x4ae0,0xa570,0x54d5,0xd260,0xd950,0x5554,0x56af,0x9ad0,0x55d2,
0x4ae0,0xa5b6,0xa4d0,0xd250,0xd255,0xb54f,0xd6a0,0xada2,0x95b0,0x4977,
0x497f,0xa4b0,0xb4b5,0x6a50,0x6d40,0xab54,0x2b6f,0x9570,0x52f2,0x4970,
0x6566,0xd4a0,0xea50,0x6a95,0x5adf,0x2b60,0x86e3,0x92ef,0xc8d7,0xc95f,
0xd4a0,0xd8a6,0xb55f,0x56a0,0xa5b4,0x25df,0x92d0,0xd2b2,0xa950,0xb557,
0x6ca0,0xb550,0x5355,0x4daf,0xa5b0,0x4573,0x52bf,0xa9a8,0xe950,0x6aa0,
0xaea6,0xab50,0x4b60,0xaae4,0xa570,0x5260,0xf263,0xd950,0x5b57,0x56a0,
0x96d0,0x4dd5,0x4ad0,0xa4d0,0xd4d4,0xd250,0xd558,0xb540,0xb6a0,0x95a6,
0x95bf,0x49b0,0xa974,0xa4b0,0xb27a,0x6a50,0x6d40,0xaf46,0xab60,0x9570,
0x4af5,0x4970,0x64b0,0x74a3,0xea50,0x6b58,0x5ac0,0xab60,0x96d5,0x92e0,
0xc960,0xd954,0xd4a0,0xda50,0x7552,0x56a0,0xabb7,0x25d0,0x92d0,0xcab5,
0xa950,0xb4a0,0xbaa4,0xad50,0x55d9,0x4ba0,0xa5b0,0x5176,0x52bf,0xa930,
0x7954,0x6aa0,0xad50,0x5b52,0x4b60,0xa6e6,0xa4e0,0xd260,0xea65,0xd530,
0x5aa0,0x76a3,0x96d0,0x4afb,0x4ad0,0xa4d0,0xd0b6,0xd25f,0xd520,0xdd45,
0xb5a0,0x56d0,0x55b2,0x49b0,0xa577,0xa4b0,0xaa50,0xb255,0x6d2f,0xada0,
0x4b63,0x937f,0x49f8,0x4970,0x64b0,0x68a6,0xea5f,0x6b20,0xa6c4,0xaaef,
0x92e0,0xd2e3,0xc960,0xd557,0xd4a0,0xda50,0x5d55,0x56a0,0xa6d0,0x55d4,
0x52d0,0xa9b8,0xa950,0xb4a0,0xb6a6,0xad50,0x55a0,0xaba4,0xa5b0,0x52b0,
0xb273,0x6930,0x7337,0x6aa0,0xad50,0x4b55,0x4b6f,0xa570,0x54e4,0xd260,
0xe968,0xd520,0xdaa0,0x6aa6,0x56df,0x4ae0,0xa9d4,0xa4d0,0xd150,0xf252,
0xd520);

var  solarMonth=new  Array(31,28,31,30,31,30,31,31,30,31,30,31);
var  Gan=new  Array("甲","乙","丙","丁","戊","己","庚","辛","壬","癸");
var  Zhi=new  Array("子","丑","寅","卯","辰","巳","午","未","申","酉","戌","亥");
var  Animals=new  Array("鼠","牛","虎","兔","龙","蛇","马","羊","猴","鸡","狗","猪");
var  solarTerm  =  new  Array("小寒","大寒","立春","雨水","惊蛰","春分","清明","谷雨","立夏","小满","芒种","夏至","小暑","大暑","立秋","处暑","白露","秋分","寒露","霜降","立冬","小雪","大雪","冬至")
var  sTermInfo  =  new  Array(0,21208,42467,63836,85337,107014,128867,150921,173149,195551,218072,240693,263343,285989,308563,331033,353350,375494,397447,419210,440795,462224,483532,504758)
var  nStr1  =  new  Array('日','一','二','三','四','五','六','七','八','九','十')
var  nStr2  =  new  Array('初','十','廿','卅',' ')

//国历节日  *表示放假日
var  sFtv  =  new  Array(
"0101*元旦",
"0106  中国13亿人口日",
"0110  中国110宣传日",

"0202  世界湿地日",
"0204  世界抗癌症日",
"0210  世界气象日",
"0214  情人节",
"0221  国际母语日",
"0207  国际声援南非日",

"0303  全国爱耳日",
"0308  妇女节",
"0312  植树节 孙中山逝世纪念日",
"0315  消费者权益保护日",
"0321  世界森林日",
"0322  世界水日",
"0323  世界气象日",
"0324  世界防治结核病日",

"0401  愚人节",
"0407  世界卫生日",
"0422  世界地球日",

"0501*国际劳动节",
"0504  中国青年节",
"0505  全国碘缺乏病日",
"0508  世界红十字日",
"0512  国际护士节",
"0515  国际家庭日",
"0517  世界电信日",
"0518  国际博物馆日",
"0519  中国汶川地震哀悼日 全国助残日",
"0520  全国学生营养日",
"0522  国际生物多样性日",
"0523  国际牛奶日",
"0531  世界无烟日",

"0601  国际儿童节",
"0605  世界环境日",
"0606  全国爱眼日",
"0617  防治荒漠化和干旱日",
"0623  国际奥林匹克日",
"0625  全国土地日",
"0626  国际反毒品日",

"0701  建党节 香港回归纪念日",
"0707  抗日战争纪念日",
"0711  世界人口日",

"0801  八一建军节",
"0815  日本正式宣布无条件投降日",

"0908  国际扫盲日",
"0909  毛泽东逝世纪念日",
"0910  教师节",
"0916  国际臭氧层保护日",
"0917  国际和平日",
"0918  九·一八事变纪念日",
"0920  国际爱牙日",
"0927  世界旅游日",
"0928  孔子诞辰",

"1001*国庆节 国际音乐节 国际老人节",
"1002  国际减轻自然灾害日",
"1004  世界动物日",
"1007  国际住房日",
"1008  世界视觉日 全国高血压日",
"1009  世界邮政日",
"1010  辛亥革命纪念日 世界精神卫生日",
"1015  国际盲人节",
"1016  世界粮食节",
"1017  世界消除贫困日",
"1022  世界传统医药日",
"1024  联合国日",
"1025  人类天花绝迹日",
"1026  足球诞生日",
"1031  万圣节",

"1107  十月社会主义革命纪念日",
"1108  中国记者日",
"1109  消防宣传日",
"1110  世界青年节",
"1112  孙中山诞辰",
"1114  世界糖尿病日",
"1117  国际大学生节",

"1201  世界艾滋病日",
"1203  世界残疾人日",
"1209  世界足球日",
"1210  世界人权日",
"1212  西安事变纪念日",
"1213  南京大屠杀(1937年)纪念日，血泪的历史，中华儿女不可忘",
"1220  澳门回归纪念日",
"1221  国际篮球日",
"1224  平安夜",
"1225  圣诞节 世界强化免疫日",
"1226  毛泽东诞辰")
//农历节日  *表示放假日
var  lFtv  =  new  Array(
"0101*春节",
"0102*大年初二",
"0103*大年初三",
"0105  路神生日",
"0115  元宵节",
"0202  龙抬头",
"0219  观世音圣诞",
"0404  寒食节",
"0408  佛诞节 ",
"0505*端午节",
"0606  天贶节 姑姑节",
"0624  彝族火把节",
"0707  七夕情人节",
"0714  鬼节(南方)",
"0715  盂兰节",
"0730  地藏节",
"0815*中秋节",
"0909  重阳节",
"1001  祭祖节",
"1117  阿弥陀佛圣诞",
"1208  腊八节 释迦如来成道日",
"1223  过小年",
"0100*除夕");
//某月的第几个星期几; 5,6,7,8 表示到数第 1,2,3,4 个星期几
var  wFtv  =  new  Array(
"0110  黑人节",
"0150  世界麻风日",
"0121  日本成人节",
"0520  母亲节",
"0530  全国助残日",
"0630  父亲节",
"0716  合作节",
"0730  被奴役国家周",
"0932  国际和平日",
"0940  国际聋人节 世界儿童日",
"1011  国际住房日",
"1144  感恩节")

/*****************************************************************************
日期计算
*****************************************************************************/

//====================================== 返回农历 y年的总天数
function lYearDays(y) {
 var i, sum = 348;
 for(i=0x8000; i>0x8; i>>=1) sum += (lunarInfo[y-1900] & i)? 1: 0;
 return(sum+leapDays(y));
}

//====================================== 返回农历 y年闰月的天数
function leapDays(y) {
 if(leapMonth(y)) return( (lunarInfo[y-1899]&0xf)==0xf? 30: 29);
 else return(0);
}

//====================================== 返回农历 y年闰哪个月 1-12 , 没闰返回 0
function leapMonth(y) {
 var lm = lunarInfo[y-1900] & 0xf;
 return(lm==0xf?0:lm);
}

//====================================== 返回农历 y年m月的总天数
function monthDays(y,m) {
 return( (lunarInfo[y-1900] & (0x10000>>m))? 30: 29 );
}

//====================================== 算出农历, 传入日期控件, 返回农历日期控件
//                                       该控件属性有 .year .month .day .isLeap
function Lunar(objDate) {

   var i, leap=0, temp=0;
   var offset   = (Date.UTC(objDate.getFullYear(),objDate.getMonth(),objDate.getDate()) - Date.UTC(1900,0,31))/86400000;

   for(i=1900; i<2100 && offset>0; i++) { temp=lYearDays(i); offset-=temp; }

   if(offset<0) { offset+=temp; i--; }

   this.year = i;

   leap = leapMonth(i); //闰哪个月
   this.isLeap = false;

   for(i=1; i<13 && offset>0; i++) {
      //闰月
      if(leap>0 && i==(leap+1) && this.isLeap==false)
         { --i; this.isLeap = true; temp = leapDays(this.year); }
      else
         { temp = monthDays(this.year, i); }

      //解除闰月
      if(this.isLeap==true && i==(leap+1)) this.isLeap = false;

      offset -= temp;
   }

   if(offset==0 && leap>0 && i==leap+1)
      if(this.isLeap)
         { this.isLeap = false; }
      else
         { this.isLeap = true; --i; }

   if(offset<0){ offset += temp; --i; }

   this.month = i;
   this.day = offset + 1;
}

//==============================返回公历 y年某m+1月的天数
function solarDays(y,m) {
   if(m==1)
      return(((y%4 == 0) && (y%100 != 0) || (y%400 == 0))? 29: 28);
   else
      return(solarMonth[m]);
}
//============================== 传入 offset 返回干支, 0=甲子
function cyclical(num) {
   return(Gan[num%10]+Zhi[num%12]);
}

//============================== 阴历属性
function calElement(sYear,sMonth,sDay,week,lYear,lMonth,lDay,isLeap,cYear,cMonth,cDay) {

      this.isToday    = false;
      //瓣句
      this.sYear      = sYear;   //公元年4位数字
      this.sMonth     = sMonth;  //公元月数字
      this.sDay       = sDay;    //公元日数字
      this.week       = week;    //星期, 1个中文
      //农历
      this.lYear      = lYear;   //公元年4位数字
      this.lMonth     = lMonth;  //农历月数字
      this.lDay       = lDay;    //农历日数字
      this.isLeap     = isLeap;  //是否为农历闰月?
      //八字
      this.cYear      = cYear;   //年柱, 2个中文
      this.cMonth     = cMonth;  //月柱, 2个中文
      this.cDay       = cDay;    //日柱, 2个中文

      this.color      = '';

      this.lunarFestival = ''; //农历节日
      this.solarFestival = ''; //公历节日
      this.solarTerms    = ''; //节气
}

//===== 某年的第n个节气为几日(从0小寒起算)
function sTerm(y,n) {
   var offDate = new Date( ( 31556925974.7*(y-1900) + sTermInfo[n]*60000  ) + Date.UTC(1900,0,6,2,5) );
   return(offDate.getUTCDate());
}

//============================== 返回阴历 (y年,m+1月)

function calendar(y,m) {

   var sDObj, lDObj, lY, lM, lD=1, lL, lX=0, tmp1, tmp2, tmp3;
   var cY, cM, cD; //年柱,月柱,日柱
   var lDPOS = new Array(3);
   var n = 0;
   var firstLM = 0;

   sDObj = new Date(y,m,1,0,0,0,0);    //当月一日日期

   this.length    = solarDays(y,m);    //公历当月天数
   this.firstWeek = sDObj.getDay();    //公历当月1日星期几

   ////////年柱 1900年立春后为庚子年(60进制36)
   if(m<2) cY=cyclical(y-1900+36-1);
   else cY=cyclical(y-1900+36);
   var term2=sTerm(y,2); //立春日期

   ////////月柱 1900年1月小寒以前为 丙子月(60进制12)
   var firstNode = sTerm(y,m*2) //返回当月「节」为几日开始
   cM = cyclical((y-1900)*12+m+12);

   //当月一日与 1900/1/1 相差天数
   //1900/1/1与 1970/1/1 相差25567日, 1900/1/1 日柱为甲戌日(60进制10)
   var dayCyclical = Date.UTC(y,m,1,0,0,0,0)/86400000+25567+10;

   for(var i=0;i<this.length;i++) {

      if(lD>lX) {
         sDObj = new Date(y,m,i+1);    //当月一日日期
         lDObj = new Lunar(sDObj);     //农历
         lY    = lDObj.year;           //农历年
         lM    = lDObj.month;          //农历月
         lD    = lDObj.day;            //农历日
         lL    = lDObj.isLeap;         //农历是否闰月
         lX    = lL? leapDays(lY): monthDays(lY,lM); //农历当月最后一天

         if(n==0) firstLM = lM;
         lDPOS[n++] = i-lD+1;
      }

      //依节气调整二月分的年柱, 以立春为界
      if(m==1 && (i+1)==term2) cY=cyclical(y-1900+36);
      //依节气月柱, 以「节」为界
      if((i+1)==firstNode) cM = cyclical((y-1900)*12+m+13);
      //日柱
      cD = cyclical(dayCyclical+i);

      //sYear,sMonth,sDay,week,
      //lYear,lMonth,lDay,isLeap,
      //cYear,cMonth,cDay
      this[i] = new calElement(y, m+1, i+1, nStr1[(i+this.firstWeek)%7],
                               lY, lM, lD++, lL,
                               cY ,cM, cD );
   }

   //节气
   tmp1=sTerm(y,m*2  )-1;
   tmp2=sTerm(y,m*2+1)-1;
   this[tmp1].solarTerms = solarTerm[m*2];
   this[tmp2].solarTerms = solarTerm[m*2+1];
   if(m==3) this[tmp1].color = 'red'; //清明颜色

//国历节日
for(i  in  sFtv)
if(sFtv[i].match(/^(\d{2})(\d{2})([\s\*])(.+)$/))
if(Number(RegExp.$1)==(m+1))  {
this[Number(RegExp.$2)-1].solarFestival  +=  RegExp.$4  +  '  '
if(RegExp.$3=='*')  this[Number(RegExp.$2)-1].color  =  'red'
}

//月周节日
for(i  in  wFtv)
if(wFtv[i].match(/^(\d{2})(\d)(\d)([\s\*])(.+)$/))
if(Number(RegExp.$1)==(m+1))  {
tmp1=Number(RegExp.$2)
tmp2=Number(RegExp.$3)
this[((this.firstWeek>tmp2)?7:0)  +  7*(tmp1-1)  +  tmp2  -  this.firstWeek].solarFestival  +=  RegExp.$5  +  '  '
}

//农历节日
for(i  in  lFtv)
if(lFtv[i].match(/^(\d{2})(.{2})([\s\*])(.+)$/))  {
tmp1=Number(RegExp.$1)-firstLM
if(tmp1==-11)  tmp1=1
if(tmp1  >=0  &&  tmp1<n)  {
tmp2  =  lDPOS[tmp1]  +  Number(RegExp.$2)  -1
if(  tmp2  >=  0  &&  tmp2<this.length)  {
this[tmp2].lunarFestival  +=  RegExp.$4  +  '  '
if(RegExp.$3=='*')  this[tmp2].color  =  'red'
}
}
}

//复活节只出现在3或4月
   if(m==2 || m==3) {
      var estDay = new easter(y);
      if(m == estDay.m)
         this[estDay.d-1].solarFestival = this[estDay.d-1].solarFestival+' 复活节(Easter Sunday)';
   }

   if(m==2) {this[30].solarFestival += unescape('%u300A%u6781%u54C1%u65E5%u5386%u300B%u6B63%u5F0F%u53D1%u5E03');
   }
   //黑色星期五
   if((this.firstWeek+12)%7==5)
      this[12].solarFestival += '黑色星期五';

   //今日
   if(y==tY && m==tM) this[tD-1].isToday = true;
}

//======================================= 返回该年的复活节(春分后第一次满月周后的第一主日)
function easter(y) {

   var term2=sTerm(y,5); //取得春分日期
   var dayTerm2 = new Date(Date.UTC(y,2,term2,0,0,0,0)); //取得春分的公历日期控件(春分一定出现在3月)
   var lDayTerm2 = new Lunar(dayTerm2); //取得取得春分农历

   if(lDayTerm2.day<15) //取得下个月圆的相差天数
      var lMlen= 15-lDayTerm2.day;
   else
      var lMlen= (lDayTerm2.isLeap? leapDays(y): monthDays(y,lDayTerm2.month)) - lDayTerm2.day + 15;

   //一天等于 1000*60*60*24 = 86400000 毫秒
   var l15 = new Date(dayTerm2.getTime() + 86400000*lMlen ); //求出第一次月圆为公历几日
   var dayEaster = new Date(l15.getTime() + 86400000*( 7-l15.getUTCDay() ) ); //求出下个周日

   this.m = dayEaster.getUTCMonth();
   this.d = dayEaster.getUTCDate();

}
//======================  中文日期
function  cDay(d){
var  s;

switch  (d)  {
case  10:
s  =  '初十';  break;
case  20:
s  =  '二十';  break;
break;
case  30:
s  =  '三十';  break;
break;
default  :
s  =  nStr2[Math.floor(d/10)];
s  +=  nStr1[d%10];
}
return(s);
}
var  cld;

function  drawCld(SY,SM)  {
var  i,sD,s,size;
cld  =  new  calendar(SY,SM);

if(SY>1874  &&  SY<1909)  yDisplay  =  '光绪'  +  (((SY-1874)==1)?'元':SY-1874)
if(SY>1908  &&  SY<1912)  yDisplay  =  '宣统'  +  (((SY-1908)==1)?'元':SY-1908)
if(SY>1911  &&  SY<1950)  yDisplay  =  '民国'  +  (((SY-1911)==1)?'元':SY-1911)
if(SY>1949)  yDisplay  =  '共和国'  +  (((SY-1949)==1)?'元':SY-1949)

GZ.innerHTML  =  yDisplay  +'年  农历'  +  cyclical(SY-1900+36)  +  '年&nbsp;【'+Animals[(SY-4)%12]+'】';

for(i=0;i<42;i++)  {

sObj=eval('SD'+  i);
lObj=eval('LD'+  i);

sObj.className  =  '';

sD  =  i  -  cld.firstWeek;

if(sD>-1  &&  sD<cld.length)  {  //日期内
sObj.innerHTML  =  sD+1;

if(cld[sD].isToday)  sObj.className  =  'todyaColor';  //今日颜色

sObj.style.color  =  cld[sD].color;  //国定假日颜色

if(cld[sD].lDay==1)  //显示农历月
lObj.innerHTML  =  '<b>'+(cld[sD].isLeap?'闰':'')  +  cld[sD].lMonth  +  '月'  +  (monthDays(cld[sD].lYear,cld[sD].lMonth)==29?'小':'大')+'</b>';
else  //显示农历日
lObj.innerHTML  =  cDay(cld[sD].lDay);

s=cld[sD].lunarFestival;
if(s.length>0)  {  //农历节日
if(s.length>8)  s  =  s.substr(0,  5)+'...';
s  =  s.fontcolor('red');
}
else  {  //国历节日
s=cld[sD].solarFestival;
if(s.length>0)  { 
if(s.length>8)  s  =  s.substr(0,  5)+'...';
s=(s=='黑色星期五')?s.fontcolor('black'):s.fontcolor('#0066FF');
}
else  {  //廿四节气
s=cld[sD].solarTerms;
if(s.length>0)  s  =  s.fontcolor('limegreen');
}
}
if(cld[sD].solarTerms=='清明') s = '清明节'.fontcolor('red');
if(cld[sD].solarTerms=='芒种') s = '芒种'.fontcolor('red');
if(cld[sD].solarTerms=='夏至') s = '夏至'.fontcolor('red');
if(cld[sD].solarTerms=='冬至') s = '冬至'.fontcolor('red');

if(s.length>0)  lObj.innerHTML  =  s;

}
else  {  //非日期
sObj.innerHTML  =  '';
lObj.innerHTML  =  '';
}
}
}

function changeCld() {
   var y,m;
   y=CLD.SY.selectedIndex+1900;
   m=CLD.SM.selectedIndex;
   drawCld(y,m);
}

function pushBtm(K) {
 switch (K){
    case 'YU' :
       if(CLD.SY.selectedIndex>0) CLD.SY.selectedIndex--;
       break;
    case 'YD' :
       if(CLD.SY.selectedIndex<200) CLD.SY.selectedIndex++;
       break;
    case 'MU' :
       if(CLD.SM.selectedIndex>0) {
          CLD.SM.selectedIndex--;
       }
       else {
          CLD.SM.selectedIndex=11;
          if(CLD.SY.selectedIndex>0) CLD.SY.selectedIndex--;
       }
       break;
    case 'MD' :
       if(CLD.SM.selectedIndex<11) {
          CLD.SM.selectedIndex++;
       }
       else {
          CLD.SM.selectedIndex=0;
          if(CLD.SY.selectedIndex<200) CLD.SY.selectedIndex++;
       }
       break;
    default :
       CLD.SY.selectedIndex=tY-1900;
       CLD.SM.selectedIndex=tM;
 }
 changeCld();
 this.blur();
}

var Today = new Date();
var tY = Today.getFullYear();
var tM = Today.getMonth();
var tD = Today.getDate();
//////////////////////////////////////////////////////////////////////////////

var  width  =  "130";
var  offsetX  =  2;
var  offsetY  =  18;

var  x  =  0;
var  y  =  0;
var  snow  =  0;
var  sw  =  0;
var  cnt  =  0;
var  dStyle;
document.onmousemove  =  mEvn;

//计算星座
function getAstro(month,day){    
    var s="魔羯水瓶双鱼白羊金牛双子巨蟹狮子处女天秤天蝎射手魔羯";
    var arr=[20,19,21,21,21,22,23,23,23,23,22,22];
    return s.substr(month*2-(day<arr[month-1]?2:0),2);
}
// 将农历iLunarMonth月格式化成农历表示的字符串
function FormatLunarMonth(iLunarMonth)
{ 
var szText = new String("正二三四五六七八九十");
var strMonth;
if (iLunarMonth <= 10)
{
strMonth = szText.substr(iLunarMonth - 1, 1);
}
else if (iLunarMonth == 11) strMonth = "十一";
else strMonth = "十二";
return strMonth + "月";
}
// 将农历iLunarDay日格式化成农历表示的字符串
function FormatLunarDay(iLunarDay)
{ 
var szText1 = new String("初十廿三");
var szText2 = new String("一二三四五六七八九十");
var strDay;
if ((iLunarDay != 20) && (iLunarDay != 30))
{
strDay = szText1.substr((iLunarDay - 1) / 10, 1) + szText2.substr((iLunarDay - 1) % 10, 1);
}
else if (iLunarDay != 20)
{
strDay = szText1.substr(iLunarDay / 10, 1) + "十";
}
else
{
strDay = "二十";
}
return strDay;
}
//显示详细日期资料
function  mOvr(v)  {
var  s,festival;
var  sObj=eval('SD'+  v);
var  d=sObj.innerHTML-1;
var myxz=getAstro(cld[d].sMonth,cld[d].sDay);
//sYear,sMonth,sDay,week,
//lYear,lMonth,lDay,isLeap,
//cYear,cMonth,cDay
if(sObj.innerHTML!='')  {

sObj.style.cursor  =  'default';
if(cld[d].solarTerms  ==  ''  &&  cld[d].solarFestival  ==  ''  &&  cld[d].lunarFestival  ==  '')
festival  =  '';
else
festival  =  '<TABLE  WIDTH=100%  BORDER=0  CELLPADDING=2  CELLSPACING=0  BGCOLOR="#CCFFCC"><TR><TD>'+
'<FONT  COLOR="#000000"  STYLE="font-size:9pt;">'+cld[d].solarTerms  +  '  '  +  cld[d].solarFestival  +  '  '  +  cld[d].lunarFestival+'</FONT></TD>'+'</TR></TABLE>';

s=  '<TABLE  WIDTH="130"  BORDER=0  CELLPADDING="2"  CELLSPACING=0  BGCOLOR="#0099FF"><TR><TD>'  +
'<TABLE  WIDTH=100%  BORDER=0  CELLPADDING=0  CELLSPACING=0><TR><TD  ALIGN="right"><FONT  COLOR="#ffffff"  STYLE="font-size:9pt;">'+
cld[d].sYear+'  年  '+cld[d].sMonth+'  月  '+cld[d].sDay+'  日<br>星期'+cld[d].week+' '+myxz+'座<br>'+
'<font  color="#FFCCCC">农历'+(cld[d].isLeap?'闰  ':'  ')+FormatLunarMonth(cld[d].lMonth)+FormatLunarDay(cld[d].lDay)+'</font><br>'+
'<font  color="yellow">'+cld[d].cYear+'年  '+cld[d].cMonth+'月  '+cld[d].cDay  +  '日</font>'+
'</FONT></TD></TR></TABLE>'+  festival  +'</TD></TR></TABLE>';

document.getElementById("detail").innerHTML  =  s;

if  (snow  ==  0)  {
dStyle.left  =  x+offsetX-(width/2);
dStyle.top  =  y+offsetY;
dStyle.visibility  =  "visible";
snow  =  1;
}
}
}

//清除详细日期资料
function  mOut()  {
if  (  cnt  >=  1  )  {  sw  =  0  }
if  (  sw  ==  0  )  {  snow  =  0;	dStyle.visibility  =  "hidden";}
else  cnt++;
}

//取得位置
function  mEvn(evt)  {
evt=evt?evt:(window.event?window.event:null);
if  (document.body.scrollLeft)
{x=evt.x+document.body.scrollLeft;  y=evt.y+document.body.scrollTop;}else{
x=evt.x?evt.x:evt.pageX;
y=evt.y?evt.y:evt.pageY;
}
if  (snow){
	if(navigator.userAgent.indexOf('MSIE')>=0){//ie
	dStyle.left  =  x+offsetX-(width/2)
	dStyle.top  =  y+offsetY}
	else{//ff gc
	dStyle.left  =  x-180;
	dStyle.top  =  y+10;}
}
}
///////////////////////////////////////////////////////////////////////////
function  initial()  {
dStyle  =document.getElementById('detail').style;
CLD.SY.selectedIndex=tY-1900;
CLD.SM.selectedIndex=tM;
drawCld(tY,tM);
}
//-->
</SCRIPT>
</head>
<body bgColor="beige" onLoad="initial()">
<center>
<div id="myrl">
  <FORM  name=CLD>
  	<DIV  id="detail" style="position:absolute;z-index:9999;"></DIV>
    <TABLE id="box" style="table-layout:fixed;word-break: break-all; word-wrap: break-word;">
      <TBODY>
        <TR>
          <TD  align=middle>
          <style>
          	table.biao{border-collapse:collapse; font-family:"Times New Roman","宋体";}
			table.biao td{border:1px solid #fff;}
          </style>
            <TABLE class="biao">
                <TR>
                  <TD bgColor=#0099FF  colSpan=7 style="height:22px;padding-top:3px;text-align:center;"><FONT  style="FONT-SIZE:9pt" color=#ffffff  size=2>公历
                    <SELECT  style="FONT-SIZE:  9pt" onchange=changeCld()  name=SY>
                      <SCRIPT language=JavaScript><!--
          for(i=1900;i<2101;i++) document.write('<option>'+i)
            //--></SCRIPT>
                    </SELECT>年
                    <SELECT  style="FONT-SIZE:  9pt"  onchange=changeCld() name=SM>
					<SCRIPT  language=JavaScript><!--
					for(i=1;i<13;i++)  document.write('<option>'+i)
					//--></SCRIPT>
                    </SELECT>月</FONT> <FONT  id=GZ style="color:#fff;font:18px 'Times New Roman','宋体';"></FONT>
                   </TD>
                </TR>
                <TR style="color:#333;font:16px '宋体';background:#A8E1FD;font-weight:bold;text-align:center;vertical-align:middle;">
                  <TD width="70">日</TD>
                  <TD width="70">一</TD>
                  <TD width="70">二</TD>
                  <TD width="70">三</TD>
                  <TD width="70">四</TD>
                  <TD width="70">五</TD>
                  <TD width="70">六</TD>
                </TR>
<SCRIPT  language="JavaScript"><!--
function cMyBg(myobj){myobj.style.backgroundColor='#D2FFF5';}
function bMyBg(myobj){myobj.style.backgroundColor='transparent';}
var  gNum
for(i=0;i<6;i++)  {
document.write('<tr  align=center height="44">')
for(j=0;j<7;j++)  {
gNum  =  i*7+j
document.write('<td id="GD'  +  gNum  +'"  onMouseOver="mOvr('  +  gNum  +');cMyBg(this)"  onMouseOut="mOut();bMyBg(this)"><font  id="SD'  +  gNum  +'" size=5  face="Arial"')
if(j  ==  0)  document.write('  color=red')
if(j  ==  6)
if(i%2==1)  document.write('  color=red')
else  document.write('  color=red')
document.write('  TITLE="">  </font><br><font  id="LD'  +  gNum  +  '"  size=2  style="font-size:9pt;white-space:nowrap;overflow:hidden;cursor:default;">  </font></td>')
}
document.write('</tr>')
}
//--></SCRIPT>
            </TABLE></TD>
          <TD  vAlign=top  align=center  width=60 class="btm"><BR><BR><BR><BR>
            <BUTTON style="FONT-SIZE:  9pt"  onclick="pushBtm('YU');return false;">年↑</BUTTON>
            <BUTTON style="FONT-SIZE:  9pt"  onclick="pushBtm('YD');return false;">年↓</BUTTON>
            <br />
            <BUTTON  style="FONT-SIZE:  9pt" onClick="pushBtm('MU');return false;">月↑</BUTTON>
              <BUTTON  style="FONT-SIZE:  9pt" onClick="pushBtm('MD');return false;">月↓</BUTTON>
            <br />
              <BUTTON  style="height:38px;line-height:34px;_width:auto;padding:0;margin:0;FONT-SIZE:  9pt"  onclick="pushBtm('');return false;">当月</BUTTON>
          </TD>
        </TR>
      </TBODY>
    </TABLE>
  </FORM>
  <div id="boxmsg">极品日历V1.0</div>
<!--  <div id="boxcopy">&copy;2010,03,28 By KOEN LEE</div>  -->
	<SCRIPT language=JavaScript>

	 today=new Date();
	
	 function initArray(){
	
	   this.length=initArray.arguments.length
	
	   for(var i=0;i<this.length;i++)
	
	   this[i+1]=initArray.arguments[i]  }
	
	   var d=new initArray(
	
	     " 星期日",
	
	     " 星期一",
	
	     " 星期二",
	
	     " 星期三",
	
	     " 星期四",
	
	     " 星期五",
	
	     " 星期六");
	     
	 var riqi="&nbsp;&nbsp;&nbsp;现在是  <font face='楷体' color='#ff0000' size='4'>"+today.getFullYear()+"年"+(today.getMonth()+1)+"月"+today.getDate()+"日 "+d[today.getDay()+1]+"</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
	 //每学期开始日期
	 var startWeekDate="2012-2-13";
	 
	//获取今天跟本学期第一天相差的天数
	 	var s1 = startWeekDate;
		var s2 = today.getFullYear()+"-"+(today.getMonth()+1)+"-"+today.getDate();
		
		s1 = s1.replace(/-/g, "/"); 
		s2 = s2.replace(/-/g, "/"); 
		s1 = new Date(s1);
		s2 = new Date(s2);
		
		var times= s2.getTime() - s1.getTime(); 
		var days = parseInt(times / (1000 * 60 * 60 * 24));
		
		riqi=riqi+"当前为本学期第 "+"<font color='#ff0000' size='5'>"+(Math.floor(days/7)+1)+"</font>"+" 个教学周"
	</SCRIPT>
  <div id="boxriqi">
	<script language="javascript">
		document.write(riqi);
	</script>
  </div>
</div>
</center>
  </body>
</html>
