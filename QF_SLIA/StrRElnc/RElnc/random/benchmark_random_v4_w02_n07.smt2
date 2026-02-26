(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ a "20" x) (str.++ z "96" y "84")))

(assert (str.in_re z (re.++ (re.+ (str.to_re "842")) (re.union (str.to_re "5") (str.to_re "0")))))
(assert (str.in_re y (re.* (re.++ (re.++ (str.to_re "22") (re.+ (str.to_re "170"))) (str.to_re "527")))))
(assert (str.in_re x (re.+ (re.union (str.to_re "3") (re.++ (str.to_re "912") (str.to_re "82"))))))
(assert (str.in_re a (re.* (re.union (re.+ (str.to_re "5")) (str.to_re "5")))))

(assert (<= (+ (* 7 (str.len x)) (* (- 10) (str.len y)) (* (- 4) (str.len z)) (* (- 5) (str.len a))) 28))
(assert (> (+ (* (- 3) (str.to_int x)) (* 10 (str.to_int y)) (* (- 6) (str.to_int z)) (* 8 (str.to_int a))) 72))

(check-sat)