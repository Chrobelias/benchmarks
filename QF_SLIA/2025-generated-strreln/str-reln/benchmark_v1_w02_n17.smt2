(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.range "6" "8"))))

(assert (> (+ (* 6 (str.len x)) (* (- 8) (str.to_int x))) 79))

(check-sat)