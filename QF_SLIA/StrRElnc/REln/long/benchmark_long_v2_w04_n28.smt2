(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re y (re.++ (re.* (str.to_re "6")) (str.to_re "53"))))
(assert (str.in_re x (re.* (re.union (re.++ (re.range "0" "9") (re.range "6" "8")) (str.to_re "21")))))

(assert (> (+ (* 8 (str.len y)) (* 2 (str.to_int x))) 84))
(assert (> (+ (* (- 3) (str.len x)) (* 5 (str.len y))) 54))
(assert (<= (+ (* (- 7) (str.len x)) (* (- 2) (str.len y))) 9))

(check-sat)