package vn.karaokeplayer.guiplayer {
	import flash.text.Font;
	/**
	 * ...
	 * @author Thanh Tran
	 */
	public class FontLib {
		
		[Embed(systemFont='Arial'
		,fontFamily  = 'ArialRegularVN'
		,fontName  ='ArialRegularVN'
		,fontStyle   ='normal' // normal|italic
		,fontWeight  ='normal' // normal|bold
		,unicodeRange = 'U+0020-U+002F,U+0030-U+0039,U+003A-U+0040,U+0041-U+005A,U+005B-U+0060,U+0061-U+007A,U+007B-U+007E,U+00C0-U+00C3,U+00C8-U+00CA,U+00CC-U+00CD,U+00D0,U+00D2-U+00D5,U+00D9-U+00DA,U+00DD,U+00E0-U+00E3,U+00E8-U+00EA,U+00EC-U+00ED,U+00F2-U+00F5,U+00F9-U+00FA,U+00FD,U+0102-U+0103,U+0110-U+0111,U+0128-U+0129,U+0168-U+0169,U+01A0-U+01B0,U+1EA0-U+1EF9,U+02C6-U+0323'
		,mimeType='application/x-font'
		,embedAsCFF='false'
		)]
		private static const fontClass:Class;
		
		public static const FONT_NAME: String = "ArialRegularVN";
		
		public function FontLib() {
			Font.registerFont(fontClass);
		}
		
	}

}