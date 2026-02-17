(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "7")) (re.range "7" "9"))))

(assert (< (* (- 10) (str.len x)) 2))
(assert (>= (* 4 (str.to_int x)) 67))
(assert (>= (* 8 (str.len x)) 46))
(assert (= (+ (* 9 (str.len x)) (* (- 8) (str.to_int x))) 27))

(check-sat)