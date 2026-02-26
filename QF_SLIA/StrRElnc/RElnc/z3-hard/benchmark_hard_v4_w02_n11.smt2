(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ x "31" y) (str.++ z "15" a)))

(assert (str.in_re a (re.union (str.to_re "59") (re.* (re.range "4" "7")))))
(assert (str.in_re y (re.union (re.* (re.++ (str.to_re "1") (str.to_re "654"))) (str.to_re "545"))))
(assert (str.in_re x (re.++ (re.+ (str.to_re "68")) (re.+ (re.range "4" "9")))))
(assert (str.in_re z (re.++ (re.* (re.range "2" "8")) (re.range "3" "6"))))

(assert (< (+ (* 2 (str.len x)) (* (- 3) (str.len y)) (* 6 (str.len a))) 5))
(assert (< (+ (* 2 (str.to_int x)) (* (- 8) (str.to_int y)) (* (- 4) (str.to_int z)) (* (- 7) (str.to_int a))) 56))

(check-sat)