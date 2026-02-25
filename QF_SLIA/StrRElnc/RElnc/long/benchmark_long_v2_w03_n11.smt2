(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (= y (str.++ "51" x)))

(assert (str.in_re y (re.+ (re.union (re.+ (re.range "1" "5")) (re.range "4" "9")))))
(assert (str.in_re x (re.union (re.+ (str.to_re "82")) (re.union (re.range "7" "9") (re.+ (str.to_re "635"))))))

(assert (< (+ (* 2 (str.len y)) (* (- 8) (str.to_int y))) 37))
(assert (< (+ (* (- 9) (str.to_int x)) (* 2 (str.to_int y))) 20))

(check-sat)