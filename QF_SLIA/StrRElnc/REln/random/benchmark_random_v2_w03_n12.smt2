(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.union (re.range "3" "8") (re.++ (str.to_re "673") (re.++ (re.* (str.to_re "789")) (str.to_re "999"))))))
(assert (str.in_re x (re.* (re.* (str.to_re "87")))))

(assert (>= (+ (* (- 3) (str.len x)) (* 8 (str.len y))) 59))
(assert (<= (+ (str.to_int x) (str.to_int y)) 55))
(assert (>= (+ (* (- 5) (str.len x)) (* (- 4) (str.len y))) 90))

(check-sat)