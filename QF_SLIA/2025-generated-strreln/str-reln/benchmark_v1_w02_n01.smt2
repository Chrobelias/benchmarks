(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.union (re.+ (str.to_re "589")) (re.* (str.to_re "159"))))))

(assert (> (+ (* 6 (str.len x)) (* (- 7) (str.to_int x))) 40))

(check-sat)