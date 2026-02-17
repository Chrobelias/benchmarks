(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (str.to_re "807"))))

(assert (>= (+ (str.len x) (* (- 8) (str.to_int x))) 58))

(check-sat)