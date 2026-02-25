(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "75") (re.++ (str.to_re "238") (re.+ (str.to_re "7"))))))

(assert (> (+ (* 2 (str.len x)) (* 2 (str.to_int x))) 97))
(assert (>= (* 6 (str.to_int x)) 99))
(assert (< (+ (* (- 4) (str.len x)) (* 9 (str.to_int x))) 9))

(check-sat)