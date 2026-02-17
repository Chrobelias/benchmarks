(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.union (str.to_re "129") (str.to_re "4")) (re.+ (str.to_re "5")))))

(assert (< (* 9 (str.to_int x)) 22))
(assert (< (+ (* 4 (str.len x)) (* (- 9) (str.to_int x))) 38))

(check-sat)