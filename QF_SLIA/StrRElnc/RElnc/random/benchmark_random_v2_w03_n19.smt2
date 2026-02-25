(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "42" x)))

(assert (str.in_re x (re.++ (re.range "1" "5") (re.+ (re.range "5" "7")))))
(assert (str.in_re y (re.+ (re.union (re.+ (re.range "1" "6")) (re.* (str.to_re "46"))))))

(assert (= (+ (* 6 (str.to_int x)) (* (- 2) (str.to_int y))) 67))
(assert (< (+ (* 4 (str.len x)) (* 4 (str.to_int y))) 66))

(check-sat)