(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (re.* (str.to_re "7")) (re.+ (str.to_re "78")))))

(assert (= (+ (* 3 (str.len x)) (* 3 (str.to_int x))) 84))
(assert (< (str.len x) 64))

(check-sat)