(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.range "4" "7") (re.+ (re.range "7" "9")))))

(assert (>= (+ (* 10 (str.len x)) (* (- 6) (str.to_int x))) 52))
(assert (< (+ (str.len x) (* (- 9) (str.to_int x))) 86))
(assert (>= (* 4 (str.to_int x)) 0))

(check-sat)