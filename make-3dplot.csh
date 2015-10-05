rm 3dplot.pdf pgplot.pdf
set olddir = $PWD
cd /stardev/git/starlink/libraries/ast/ast_tester
rm pgplot.*

maketest plot3d <<HERE1
0
HERE1

testplot3d /vcps <<HERE2
2
8
width=2
8
size=0.7
8
numlabgap=0.03
8
textlabgap=0.03
8
majticklen=0.03
8
colour(border)=4
8
colour(ticks)=4
8
colour_xy(ticks)=15
8
grid_xy=1
8
colour_xy(grid)=15
8
style_xy(grid)=4
0
HERE2

ps2pdf pgplot.ps pgplot.pdf
gs \
  -o $olddir/pgplot.pdf \
  -sDEVICE=pdfwrite \
  -dFirstPage=13 \
  -dLastPage=13 \
  ./pgplot.pdf

cd $olddir
pdfcrop pgplot.pdf 3dplot.pdf

