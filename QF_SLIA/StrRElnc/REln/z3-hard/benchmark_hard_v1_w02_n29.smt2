(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.* (str.to_re "149")))))

(assert (= (+ (* 7 (str.len x)) (* (- 9) (str.to_int x))) 49))

(check-sat)