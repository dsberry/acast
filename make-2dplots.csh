setenv PGPLOT_PS_FONT Times
rm pgplot.pdf
gdset /acps
gdclear
picdef mode=a xpic=2 ypic=2 outline=no prefix=a

display mycobe style=^cobe.sty mode=perc percentiles=\[2,98\] margin=0.1 badcol=white accept

picsel a2
display hpx style=^hpx.sty mode=sca low=-2 high=-1 margin=\[0.03,0.15,0.15,0\]



setenv PGPLOT_PS_FONT NewCentury
picdef mode=xy lbound=\[0.05,0.5\] ubound=\[0.75,1.0\] nooutline
linplot ll style=^ll.sty


picsel a4
setenv PGPLOT_PS_FONT Helvetica
lutcold
display $KAPPA_DIR/m31 style=^m31.sty mode=per percentiles=\[2,98\] \
   margin=\[0.1,0.1,0.15,0\]


ps2pdf pgplot.ps 2dplots.pdf
rm pgplot.ps


