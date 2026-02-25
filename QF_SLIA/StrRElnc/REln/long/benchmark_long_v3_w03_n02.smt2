(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))
(assert (>= (str.len z) 1000))

(assert (str.in_re z (re.union (re.* (str.to_re "44")) (re.union (re.+ (str.to_re "81")) (str.to_re "57")))))
(assert (str.in_re x (re.+ (re.++ (re.++ (re.range "1" "9") (re.range "2" "6")) (str.to_re "843")))))
(assert (str.in_re y (re.* (re.++ (str.to_re "384") (re.* (re.+ (str.to_re "753")))))))

(assert (>= (+ (* 10 (str.len x)) (* (- 6) (str.len y)) (* (- 10) (str.len z))) 28))
(assert (> (+ (* 7 (str.len x)) (* (- 9) (str.len y)) (* (- 8) (str.len z))) 60))
(assert (>= (+ (* 3 (str.to_int x)) (* 10 (str.to_int y)) (* (- 6) (str.to_int z))) 91))

(check-sat)