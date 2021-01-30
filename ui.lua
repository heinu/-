require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "layout"

activity.setTheme(R.Theme_Blue)
activity.setContentView(loadlayout(layout))
function 圆角按钮(id,角度)
  import "android.graphics.Color"
  InsideColor = Color.parseColor("#9DFFFFFF")
  radiu = 角度
  import "android.graphics.drawable.GradientDrawable"
  drawable = GradientDrawable()
  drawable.setShape(GradientDrawable.RECTANGLE)
  --设置填充色
  drawable.setColor(InsideColor)
  --设置圆角 : 左上 右上 右下 左下
  drawable.setCornerRadii({20, 20, 20, 20, 20, 20, 20, 20});
  --设置边框 : 宽度 颜色
  drawable.setStroke(5, Color.parseColor("#00FF00"))
  id.setBackgroundDrawable(drawable)
end




function 圆角框架(id,角度)
  import "android.graphics.Color"
  InsideColor = Color.parseColor("#9DFFFFFF")
  radiu = 角度
  import "android.graphics.drawable.GradientDrawable"
  drawable = GradientDrawable()
  drawable.setShape(GradientDrawable.RECTANGLE)
  --设置填充色
  drawable.setColor(InsideColor)
  --设置圆角 : 左上 右上 右下 左下
  drawable.setCornerRadii({20, 20, 20, 20, 20, 20, 20, 20});
  --设置边框 : 宽度 颜色
  drawable.setStroke(5, Color.parseColor("#00FFFF"))
  id.setBackgroundDrawable(drawable)
end


圆角框架(框架1,0)