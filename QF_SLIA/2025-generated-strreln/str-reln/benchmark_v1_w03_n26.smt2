(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.+ (re.union (re.+ (re.range "7" "9")) (str.to_re "510"))))))

(assert (< (+ (* (- 3) (str.len x)) (* 2 (str.to_int x))) 39))
(assert (>= (* 9 (str.len x)) 26))

(check-sat)