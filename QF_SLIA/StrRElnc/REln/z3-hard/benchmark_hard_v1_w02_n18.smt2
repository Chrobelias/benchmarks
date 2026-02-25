(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.range "2" "4"))))

(assert (>= (+ (* 7 (str.len x)) (* (- 4) (str.to_int x))) 21))

(check-sat)