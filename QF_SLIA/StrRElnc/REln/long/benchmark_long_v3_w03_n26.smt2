(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len z) 1000))

(assert (str.in_re x (re.* (re.* (re.union (str.to_re "34") (re.range "5" "9"))))))
(assert (str.in_re y (re.++ (str.to_re "0") (re.* (re.range "6" "9")))))
(assert (str.in_re z (re.union (str.to_re "590") (re.++ (re.++ (str.to_re "48") (re.* (str.to_re "563"))) (str.to_re "83")))))

(assert (< (+ (* (- 9) (str.len x)) (* (- 2) (str.len y)) (* 10 (str.len z))) 61))
(assert (> (+ (* (- 7) (str.to_int x)) (* (- 10) (str.to_int y)) (* 2 (str.to_int z))) 6))
(assert (>= (+ (* (- 10) (str.len x)) (* 9 (str.len y)) (* 2 (str.len z))) 28))

(check-sat)