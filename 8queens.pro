pro try, i
COMMON commons, Qnumber, queen, counts

if i eq Qnumber then begin
	counts=counts+1
	print,'--- ',strtrim(string(counts,'(i)'),2)
	board=strarr(Qnumber, Qnumber)+'x'
	board[queen, indgen(Qnumber)]='Q'
	print, board
	return
endif

for j=0, Qnumber-1 do begin
	breaked=0B
	for i0=0, i-1 do begin
		if (j-queen[i0] eq 0) or (abs(j-queen[i0]) eq i-i0) then begin
			breaked=1B
			break
		endif
	endfor
	if ~breaked then begin
		queen[i]=j
		try, i+1
	endif
endfor

end

COMMON commons, Qnumber, queen, counts
counts=0LL
Qnumber=8
queen=intarr(Qnumber)
try, 0
end
