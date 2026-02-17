(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.union (re.* (str.to_re "424")) (str.to_re "80")) (re.* (str.to_re "673")))))

(assert (< (* (- 7) (str.to_int x)) 46))
(assert (< (+ (* 2 (str.len x)) (* 9 (str.to_int x))) 92))
(assert (< (+ (* (- 2) (str.len x)) (* (- 4) (str.to_int x))) 59))

(check-sat)