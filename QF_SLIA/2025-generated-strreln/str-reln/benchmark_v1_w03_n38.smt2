(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.+ (str.to_re "3")))))

(assert (< (* 3 (str.to_int x)) 54))
(assert (= (+ (* 10 (str.len x)) (* 7 (str.to_int x))) 40))

(check-sat)