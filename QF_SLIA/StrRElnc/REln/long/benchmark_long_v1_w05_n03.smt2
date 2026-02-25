(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.++ (str.to_re "16") (re.union (re.+ (str.to_re "18")) (str.to_re "32"))))))

(assert (< (+ (* 5 (str.len x)) (* 4 (str.to_int x))) 87))
(assert (>= (* 8 (str.to_int x)) 32))
(assert (= (+ (* 7 (str.len x)) (* (- 8) (str.to_int x))) 0))

(check-sat)