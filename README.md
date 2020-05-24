# Flutter_playground

## レイアウト

* https://flutter.dev/docs/codelabs/layout-basics
  * Row, Column -> LinearLayout
  * mainAxisSize -> layout_width, layout_height
  * mainAxisAlignment, crossAxisAlignment -> ConstraintLayout の ChainStyle
    * mainAxisAlignment : Row なら水平、Column なら垂直
    * crossAxisAlignment : Row なら垂直、Column なら水平
  * Flexible, Expanded -> layout_constraintWidth_default, layout_constraintHeight_default
    * Flexible は子の Widget のサイズ次第では拡大されないが、Expanded は子の Widget のサイズに関係なく拡大される
  * SizedBox -> layout_width, layout_height にサイズ指定、単体で使う場合はマージン
  * Spacer -> マージン。ただしサイズ指定でなく比率指定
  * Text -> TextView
