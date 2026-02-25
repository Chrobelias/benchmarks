(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.* (str.to_re "766")) (re.++ (str.to_re "470") (re.* (str.to_re "136"))))))

(assert (< (+ (* (- 5) (str.len x)) (str.to_int x)) 32))
(assert (>= (+ (* 3 (str.len x)) (* 8 (str.to_int x))) 2))
(assert (> (* 10 (str.len x)) 37))

(check-sat)