(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= z (str.++ "33" x "46" "29" y a)))

(assert (str.in_re a (re.++ (re.++ (str.to_re "5") (re.+ (re.range "6" "8"))) (str.to_re "58"))))
(assert (str.in_re y (re.++ (str.to_re "68") (re.++ (re.range "3" "5") (re.* (re.range "1" "4"))))))
(assert (str.in_re z (re.* (re.++ (re.range "1" "9") (re.* (str.to_re "3"))))))
(assert (str.in_re x (re.+ (re.union (str.to_re "9") (re.union (str.to_re "0") (str.to_re "20"))))))

(assert (< (+ (* (- 4) (str.len x)) (* (- 9) (str.len y)) (* 3 (str.len z)) (* 9 (str.len a))) 38))
(assert (> (+ (* (- 3) (str.to_int x)) (* (- 7) (str.to_int y)) (* (- 10) (str.to_int z)) (* (- 7) (str.to_int a))) 71))

(check-sat)