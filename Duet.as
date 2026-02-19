package  {
	import flash.display.Stage;
	import flash.utils.getTimer;
	import flash.display.MovieClip;
	import flash.events.TouchEvent;
	import flash.ui.Multitouch;
	import flash.ui.MultitouchInputMode;
	
	import flash.events.Event;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import flash.filters.BitmapFilter;
	import flash.filters.BitmapFilterQuality;
	import flash.filters.DropShadowFilter;
	
	
	
	public class Duet extends MovieClip 
	
	{
		
			var gamestart = false;
			var touchstart = false;
			var hitstart = false;
			
	
			//var speed:Number = 0;
			var constspeed:Number=0.3;
			var xspeed:Number=0;
			var friction:Number=0.95;
			var bgx:Number=0;
			
			
			var consspeed:Number=4;
			var speed:Number=0;
			var fiction:Number=0.95;
			var gx:Number=0;
			//for 2nd bg
			
			
			
			
			
			var sx:Number;
			var sy:Number;
			  
			//var bg:MovieClip;
		
		var flag = 0; //updown
		
		public function Duet() 
		{
			
			Multitouch.inputMode = MultitouchInputMode.TOUCH_POINT;
				
		    stage.addEventListener(Event.ENTER_FRAME,dotask);
			stage.addEventListener(TouchEvent.TOUCH_BEGIN,movement);
			stage.addEventListener(TouchEvent.TOUCH_END,movementb);
			
			//bg = new backgroundBlocks();
			
			//bg.x = stage.stageWidth/2;
			//bg.y = stage.stageHeight/2;
			
		}
		
		public function movement (e:TouchEvent):void
		{
			//if(gamestart ==false)
				gamestart = true;
			touchstart = true;
			sx = e.stageX;
			sy = e.stageY;
			
			
		}
		
		public function movementb (e:TouchEvent):void
		{
			
			touchstart = false;
			
		}
		
		public function dotask (e:Event):void
		{
			
			if(gamestart == true)
			
			
			
			
			{
				
				if(flag==0)
				
				
			{      
			      
				xspeed=xspeed-constspeed;
				xspeed=xspeed*friction;
				bgx=bgx-xspeed;
				bg.y=bgx;
				
				}
				if(cir.hitTestObject(bg.in1)==true)
				{
					gotoAndStop(2);
				}
				
				
				}
				
				if(touchstart ==  true)
			{
				
				
			if (sx < 240)
			{
			
				cir.rotation += 10;
				cir.vall1.visible=false;
				cir.vaall1.visible=false;
				cir.va2.visible=false;
				cir.va1.visible=true;
				cir.vaa2.visible=false;
				cir.vaa1.visible=true;
			}
				
				
        	if (sx > 240)
			{
			
				cir.rotation -= 10;
				cir.vall1.visible=false;
				cir.vaall1.visible=false;
				cir.va2.visible=true;
				cir.va1.visible=false;
				
				cir.vaa2.visible=true;
				cir.vaa1.visible=false;
			}
				
			
			}
			
				//trace(bg.y);
			  
			if(hitstart == false)
			{
			if((cir.n1.hitTestObject(bg.b1)==true)||(cir.n1.hitTestObject(bg.b2)==true)||(cir.n1.hitTestObject(bg.b3)==true)||(cir.n1.hitTestObject(bg.b4)==true)||(cir.n1.hitTestObject(bg.b5)==true)||(cir.n1.hitTestObject(bg.b6)==true)||(cir.n1.hitTestObject(bg.b7)==true)||
			  (cir.m1.hitTestObject(bg.b1)==true)||(cir.m1.hitTestObject(bg.b2)==true)||(cir.m1.hitTestObject(bg.b3)==true)||(cir.m1.hitTestObject(bg.b4)==true)||(cir.m1.hitTestObject(bg.b5)==true)||(cir.m1.hitTestObject(bg.b6)==true)||(cir.m1.hitTestObject(bg.b7)==true))
				{
					
					flag=1;
					hitstart = true;
				}
				
					
					     
			
					
				
				
				if(cir.n1.hitTestObject(bg.b1.co1)==true)
				{
					 bg.b1.co1.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.n1.hitTestObject(bg.b1.co5)==true)
				{
					 bg.b1.co5.visible=true;
					 flag=1;
					  hitstart = true;
				}
				if(cir.n1.hitTestObject(bg.b1.co7)==true)
				{
					 bg.b1.co7.visible=true;
					 flag=1;
					  hitstart = true;
				}
				if(cir.m1.hitTestObject(bg.b1.co2)==true)
				{
					 bg.b1.co2.visible=true;
					 flag=1;
					  hitstart = true;
				}
				if(cir.m1.hitTestObject(bg.b1.co6)==true)
				{
					 bg.b1.co6.visible=true;
					 flag=1;
					  hitstart = true;
				}
				if(cir.m1.hitTestObject(bg.b1.co8)==true)
				{
					 bg.b1.co8.visible=true;
					 flag=1;
					  hitstart = true;
				}
				if(cir.n1.hitTestObject(bg.b2.co1)==true)
				{
					 bg.b2.co1.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.n1.hitTestObject(bg.b2.co5)==true)
				{
					 bg.b2.co5.visible=true;
					 flag=1;
					  hitstart = true;
				}
				if(cir.n1.hitTestObject(bg.b2.co7)==true)
				{
					 bg.b2.co7.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.m1.hitTestObject(bg.b2.co2)==true)
				{
					 bg.b2.co2.visible=true;
					 flag=1;
					hitstart = true;
				}
				if(cir.m1.hitTestObject(bg.b2.co6)==true)
				{
					 bg.b2.co6.visible=true;
					 flag=1;
					hitstart = true;
				}
				if(cir.m1.hitTestObject(bg.b2.co8)==true)
				{
					 bg.b2.co8.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.n1.hitTestObject(bg.b2.co3)==true)
				{
					 bg.b2.co3.visible=true;
					 flag=1;
					hitstart = true;
				}
				if(cir.m1.hitTestObject(bg.b2.co4)==true)
				{
					 bg.b2.co4.visible=true;
					 flag=1;
					  hitstart = true;
				}
				if(cir.n1.hitTestObject(bg.b3.co1)==true)
				{
					 bg.b3.co1.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.n1.hitTestObject(bg.b3.co5)==true)
				{
					 bg.b3.co5.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.n1.hitTestObject(bg.b3.co7)==true)
				{
					 bg.b3.co7.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.m1.hitTestObject(bg.b3.co2)==true)
				{
					 bg.b3.co2.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.m1.hitTestObject(bg.b3.co6)==true)
				{
					 bg.b3.co6.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.m1.hitTestObject(bg.b3.co8)==true)
				{
					 bg.b3.co8.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.n1.hitTestObject(bg.b3.co3)==true)
				{
					 bg.b3.co3.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.m1.hitTestObject(bg.b3.co4)==true)
				{
					 bg.b3.co4.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.n1.hitTestObject(bg.b4.co1)==true)
				{
					 bg.b4.co1.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.n1.hitTestObject(bg.b4.co5)==true)
				{
					 bg.b4.co5.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.n1.hitTestObject(bg.b4.co7)==true)
				{
					 bg.b4.co7.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.m1.hitTestObject(bg.b4.co2)==true)
				{
					 bg.b4.co2.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.m1.hitTestObject(bg.b4.co6)==true)
				{
					 bg.b4.co6.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.m1.hitTestObject(bg.b4.co8)==true)
				{
					 bg.b4.co8.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.n1.hitTestObject(bg.b4.co3)==true)
				{
					 bg.b4.co3.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.m1.hitTestObject(bg.b4.co4)==true)
				{
					 bg.b4.co4.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.n1.hitTestObject(bg.b5.co1)==true)
				{
					 bg.b5.co1.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.m1.hitTestObject(bg.b5.co2)==true)
				{
					 bg.b5.co2.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.n1.hitTestObject(bg.b5.co3)==true)
				{
					 bg.b5.co3.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.m1.hitTestObject(bg.b5.co4)==true)
				{
					 bg.b5.co4.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.n1.hitTestObject(bg.b6.co1)==true)
				{
					 bg.b6.co1.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.n1.hitTestObject(bg.b6.co5)==true)
				{
					 bg.b6.co5.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.n1.hitTestObject(bg.b6.co7)==true)
				{
					 bg.b6.co7.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.m1.hitTestObject(bg.b6.co2)==true)
				{
					 bg.b6.co2.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.m1.hitTestObject(bg.b6.co6)==true)
				{
					 bg.b6.co6.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.m1.hitTestObject(bg.b6.co8)==true)
				{
					 bg.b6.co8.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.n1.hitTestObject(bg.b6.co3)==true)
				{
					 bg.b6.co3.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.m1.hitTestObject(bg.b6.co4)==true)
				{
					 bg.b6.co4.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.n1.hitTestObject(bg.b7.co1)==true)
				{
					 bg.b7.co1.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.n1.hitTestObject(bg.b7.co5)==true)
				{
					 bg.b7.co5.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.n1.hitTestObject(bg.b7.co7)==true)
				{
					 bg.b7.co7.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.m1.hitTestObject(bg.b7.co2)==true)
				{
					 bg.b7.co2.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.m1.hitTestObject(bg.b7.co6)==true)
				{
					 bg.b7.co6.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.m1.hitTestObject(bg.b7.co8)==true)
				{
					 bg.b7.co8.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.n1.hitTestObject(bg.b7.co3)==true)
				{
					 bg.b7.co3.visible=true;
					 flag=1;
					 hitstart = true;
				}
				if(cir.m1.hitTestObject(bg.b7.co4)==true)
				{
					 bg.b7.co4.visible=true;
					 flag=1;
					 hitstart = true;
				}
			}
				
				if(flag==1)
				{
				//gamestart=false;	
				xspeed=xspeed+consspeed;
				xspeed=xspeed*friction;
				bgx=bgx-xspeed;
				bg.y=bgx;
				trace(bg.y);
				
				
			if(bg.y<=-0)
			{
				gamestart=true;
				hitstart=false;
				flag=0;
				trace(flag);
				
			}
				}
				
				

			
		}
		}
		
		}
		