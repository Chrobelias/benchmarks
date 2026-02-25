(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.union (re.++ (re.* (str.to_re "86")) (str.to_re "718")) (str.to_re "929")))))

(assert (= (* 3 (str.to_int x)) 54))
(assert (<= (+ (str.len x) (* (- 10) (str.to_int x))) 0))

(check-sat)