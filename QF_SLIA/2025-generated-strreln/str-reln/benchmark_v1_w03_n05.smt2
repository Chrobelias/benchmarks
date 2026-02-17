(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.++ (re.* (str.to_re "52")) (str.to_re "271")) (str.to_re "817"))))

(assert (= (+ (* (- 5) (str.len x)) (* 4 (str.to_int x))) 4))
(assert (< (* (- 2) (str.to_int x)) 30))

(check-sat)