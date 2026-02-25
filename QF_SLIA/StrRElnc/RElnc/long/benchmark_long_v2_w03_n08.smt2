(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (= (str.++ y "63") (str.++ x "63")))

(assert (str.in_re y (re.++ (re.range "2" "5") (re.union (re.+ (str.to_re "457")) (re.* (str.to_re "94"))))))
(assert (str.in_re x (re.++ (re.range "2" "5") (re.union (re.* (re.range "1" "7")) (str.to_re "65")))))

(assert (<= (* (- 8) (str.to_int y)) 19))
(assert (> (+ (* 2 (str.to_int x)) (* 2 (str.to_int y))) 75))
(assert (< (+ (* (- 6) (str.len x)) (* 3 (str.len y))) 52))

(check-sat)