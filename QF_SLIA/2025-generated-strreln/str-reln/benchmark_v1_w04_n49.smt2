(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.+ (str.to_re "749")) (re.union (re.+ (str.to_re "152")) (str.to_re "185")))))

(assert (<= (+ (* (- 3) (str.len x)) (* 4 (str.to_int x))) 23))
(assert (>= (+ (* 5 (str.len x)) (* (- 6) (str.to_int x))) 79))

(check-sat)