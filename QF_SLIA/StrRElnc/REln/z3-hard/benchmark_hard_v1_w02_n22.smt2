(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.+ (re.+ (str.to_re "90"))) (re.* (str.to_re "58")))))

(assert (>= (+ (* 7 (str.len x)) (* (- 6) (str.to_int x))) 45))

(check-sat)