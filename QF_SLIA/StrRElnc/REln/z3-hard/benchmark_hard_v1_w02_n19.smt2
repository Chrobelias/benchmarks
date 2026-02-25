(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "61") (re.+ (str.to_re "728")))))

(assert (= (+ (* 4 (str.len x)) (* (- 8) (str.to_int x))) 20))

(check-sat)