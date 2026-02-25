(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.range "3" "9"))))

(assert (= (+ (* 2 (str.len x)) (* (- 7) (str.to_int x))) 27))

(check-sat)