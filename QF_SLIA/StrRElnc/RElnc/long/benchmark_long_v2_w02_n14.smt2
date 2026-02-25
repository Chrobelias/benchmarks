(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (= (str.++ "57" x) (str.++ y "74")))

(assert (str.in_re y (re.++ (re.range "4" "9") (re.union (str.to_re "84") (re.union (re.* (str.to_re "80")) (re.range "5" "8"))))))
(assert (str.in_re x (re.union (str.to_re "20") (re.union (str.to_re "57") (re.* (re.range "1" "5"))))))

(assert (>= (+ (* 8 (str.len x)) (* (- 2) (str.len y))) 93))
(assert (>= (+ (* 5 (str.to_int x)) (* 8 (str.to_int y))) 35))

(check-sat)