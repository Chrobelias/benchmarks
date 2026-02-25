(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "87" x)))

(assert (str.in_re x (re.+ (re.union (re.union (re.+ (str.to_re "3")) (str.to_re "925")) (str.to_re "1")))))
(assert (str.in_re y (re.+ (re.++ (re.+ (re.range "1" "8")) (re.* (re.range "3" "9"))))))

(assert (< (+ (* (- 6) (str.to_int x)) (* (- 8) (str.to_int y))) 6))
(assert (< (+ (* (- 10) (str.to_int x)) (str.to_int y)) 14))
(assert (< (+ (* (- 7) (str.len x)) (* 10 (str.to_int y))) 96))

(check-sat)