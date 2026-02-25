(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ x "54") (str.++ "65" y)))

(assert (str.in_re x (re.++ (re.union (re.range "6" "9") (str.to_re "679")) (re.* (re.range "5" "8")))))
(assert (str.in_re y (re.* (re.union (str.to_re "31") (re.union (re.* (re.range "3" "8")) (str.to_re "6"))))))

(assert (<= (+ (* (- 3) (str.len y)) (* 9 (str.to_int x))) 98))
(assert (> (+ (str.to_int x) (* (- 3) (str.to_int y))) 24))
(assert (= (+ (str.to_int x) (* (- 4) (str.to_int y))) 99))

(check-sat)