(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (= (str.++ x "59") (str.++ "41" y)))

(assert (str.in_re y (re.++ (re.union (str.to_re "83") (re.* (re.range "4" "9"))) (re.* (str.to_re "44")))))
(assert (str.in_re x (re.* (re.union (re.range "7" "9") (re.union (re.range "0" "6") (str.to_re "25"))))))

(assert (> (+ (* 5 (str.len x)) (* (- 3) (str.len y))) 23))
(assert (= (+ (* (- 5) (str.to_int x)) (* 10 (str.to_int y))) 7))
(assert (>= (+ (* 5 (str.len x)) (* (- 6) (str.len y))) 56))

(check-sat)