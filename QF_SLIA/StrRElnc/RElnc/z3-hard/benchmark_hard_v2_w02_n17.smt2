(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "75" x)))

(assert (str.in_re y (re.+ (re.* (re.union (re.+ (re.range "2" "8")) (str.to_re "9"))))))
(assert (str.in_re x (re.union (re.* (str.to_re "911")) (re.++ (str.to_re "92") (re.range "6" "8")))))

(assert (< (+ (* (- 6) (str.len x)) (* 9 (str.to_int y))) 42))

(check-sat)