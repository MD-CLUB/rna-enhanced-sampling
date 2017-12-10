awk '{
  sub("\\\\&","__and__")
  if(match($0,".*&.*")){
    split($0,a,"&")
    $0=a[1] " & " a[2] " & " a[3] " & " (a[7]==" - "?"MM":(a[7]~"MM" ? "MM, QM/MM ":"QM/MM")) " & " a[8] " & " a[9]
  } else {
    sub("ccccccccc","cccccc")
    sub("multicolumn\\{9\\}","multicolumn{6}")
  }
  sub("__and__","\\\\\\&")
  print
}' table.tex > tableshort.tex

sed 's/MM,//' table.tex > tablelong.tex


