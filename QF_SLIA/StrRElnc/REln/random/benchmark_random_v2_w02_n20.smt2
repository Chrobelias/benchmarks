(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.* (re.++ (re.+ (str.to_re "675")) (str.to_re "79")))))
(assert (str.in_re x (re.++ (re.union (re.* (str.to_re "92")) (str.to_re "4")) (str.to_re "8"))))

(assert (= (+ (* 10 (str.to_int x)) (* 4 (str.to_int y))) 12))
(assert (>= (+ (str.len x) (* 5 (str.len y))) 53))

(check-sat)